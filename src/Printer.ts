import { TypeDefinition, MetadataEntry, TDClass, TypePath, TypeParam, TPExpr, TPType, TDAbstract, TDAlias, TDEnum, TypeParamDecl, Field, Access, FieldType, FVar, FProp, FFun } from './Expr';

/**
 * Temporary haxe syntax printer to help bootstrap the project (this code will be thrown away when translating to haxe)
 */
export class Printer {

    constructor() {}

    public printTypeDefinition = (t?: TypeDefinition, printPackage: boolean = true): string => {
        if (t == null) {
            return '';
        }

        let typeHeader = '';
        let typeFooter = '';
        let typeParamsDecl = this.printTypeParamsDecl(t.params);
    
        switch (t.kind.enumId) {
            case 'TDClass': {
                let tdClass: TDClass = t.kind;
                typeHeader = `${tdClass.isFinal ? 'final ' : ''}${t.isExtern ? 'extern ' : ''}${tdClass.isInterface ? 'interface ' : 'class '}${t.name}${typeParamsDecl}`;
                if (tdClass.superClass != null) {
                    typeHeader += this.printExtendingSuperClasses([tdClass.superClass]);
                }
                typeHeader += this.printImplementingInterfaces(tdClass.interfaces);
                typeHeader = typeHeader.trimRight() + ' {';
                typeFooter = '}';
                break;
            }
            case 'TDAbstract': {
                let tdAbstract = t.kind as TDAbstract;
                typeHeader = `${t.isExtern ? 'extern ' : ''}abstract ${t.name}${typeParamsDecl}(${tdAbstract.tthis}) `;
                if (tdAbstract.from != null && tdAbstract.from.length !== 0) {
                    typeHeader += tdAbstract.from.map(f => `from ${f}`).join(' ') + ' ';
                }
                if (tdAbstract.to != null && tdAbstract.to.length !== 0) {
                    typeHeader += tdAbstract.to.map(f => `to ${f}`).join(' ') + ' ';
                }
                typeHeader = typeHeader.trimRight() + ' {';
                typeFooter = '}';
                break;
            }
            case 'TDAlias': {
                let tdAlias = t.kind as TDAlias;
                typeHeader = `typedef ${t.name}${typeParamsDecl} = ${tdAlias.t};`;
                typeFooter = '';
                break;
            }
            case 'TDEnum': {
                typeHeader = `enum ${t.name}${typeParamsDecl} {`;
                typeFooter = '}';
                break;
            }
            case 'TDStructure': {
                typeHeader = `{`;
                typeFooter = '}';
                break;
            }
        }

        return `${printPackage ? `package ${t.pack.join('.')};` : ''}
${this.printDoc(t.doc)}
${t.meta != null ? t.meta.map(this.printMetadata).join('\n') : ''}
${typeHeader}
${t.fields.map(this.printField).join('\n')}
${typeFooter}
`;
    }

    public printMetadata = (meta?: MetadataEntry): string => {
        return meta == null ? '' : `@${meta.name}${(meta.params != null && meta.params.length > 0) ? `(${meta.params!.join(', ')})` : ''}`;
    }

    public printTypePath = (typePath?: TypePath) => {
        if (typePath == null) return '';
        let str = '';
        if (typePath.pack != null) {
            str += typePath.pack.join('.');
        }
        if (typePath.name != null) {
            str += typePath.name;
        }
        if (typePath.sub != null) {
            str += typePath.sub;
        }
        if (typePath.params != null) {
            str += this.printTypeParameters(typePath.params);
        }
        return str;
    }

    public printTypeParam = (typeParam?: TypeParam) => {
        if (typeParam == null) return '';
        switch (typeParam.enumId) {
            case "TPExpr": {
                return (typeParam as TPExpr).e;
            }
            case "TPType": {
                return (typeParam as TPType).t;
            }
        }
        return  '';
    }

    public printTypeParamDecl = (typeParamDecl?: TypeParamDecl) => {
        if (typeParamDecl == null) return '';
        let str = '';
        if (typeParamDecl.meta != null) {
            str += typeParamDecl.meta.map(this.printMetadata).join(' ');
        }
        str += typeParamDecl.name;
        str += this.printTypeParamsDecl(typeParamDecl.params);
        if (typeParamDecl.constraints != null && typeParamDecl.constraints.length > 0) {
            str += ': ' + typeParamDecl.constraints.join(' & ');
        }
        return str;
    }

    public printField = (field?: Field) => {
        if (field == null) return '';
        let str = '';
        if (field.doc != null) {
            str += this.printDoc(field.doc) + '\n';
        }
        if (field.meta != null && field.meta.length > 0) {
            str += field.meta.map(this.printMetadata).join('\n') + '\n';
        }
        if (field.access != null && field.access.length > 0) {
            str += field.access.map(this.printAccess).join(' ') + ' '
        }

        let fieldKindKeyword = '';
        if (field.kind != null) {
            switch (field.kind.enumId) {
                case 'FVar':
                case 'FProp':{
                    fieldKindKeyword = 'var';
                    break;
                }
                case 'FFun': {
                    fieldKindKeyword = 'function';
                    break;
                }
            }
        }
        str += `${fieldKindKeyword} ${field.name}`;

        if (field.kind != null) {
            switch (field.kind.enumId) {
                case 'FVar': {
                    let fVar = field.kind as FVar;
                    if (fVar.t != null) {
                        str += `: ${fVar.t}`;
                    }   
                    if (fVar.e != null) {
                        str += ` = ${fVar.e}`;
                    }
                    str += ';';
                    break;
                }
                case 'FProp': {
                    let fProp = field.kind as FProp;
                    str += `(${fProp.get}, ${fProp.set})`;
                    if (fProp.t != null) {
                        str += `: ${fProp.t}`;
                    }
                    if (fProp.e != null) {
                        str += ` = ${fProp.e}`;
                    }
                    str += ';';
                    break;
                }
                case 'FFun': {
                    let fFun = field.kind as FFun;
                    str += `${this.printTypeParamsDecl(fFun.f.params)}(${fFun.f.args.join(', ')}): ${fFun.f.ret != null ? fFun.f.ret : 'Any'};`;
                    break;
                }
            }
        }

        return str;
    }

    public printAccess = (access?: Access) => {
        if (access == null) return '';
        switch (access) {
            case Access.APublic: return 'public';
            case Access.APrivate: return 'private';
            case Access.AStatic: return 'static';
            case Access.AOverride: return 'override';
            case Access.ADynamic: return 'dynamic';
            case Access.AInline: return 'inline';
            case Access.AMacro: return 'macro';
            case Access.AFinal: return 'final';
            case Access.AExtern: return 'extern';
        }
    }

    private printImplementingInterfaces = (interfaces?: Array<TypePath>) => {
        if (interfaces == null || interfaces.length === 0) return '';
        return interfaces.map(tp => 'implements ' + this.printTypePath(tp)).join(' ');
    }

    private printExtendingSuperClasses = (superClasses?: Array<TypePath>) => {
        if (superClasses == null || superClasses.length === 0) return '';
        return superClasses.map(tp => 'extends ' + this.printTypePath(tp)).join(' ');
    }

    private printTypeParameters = (params?: Array<TypeParam>) => {
        if (params == null || params.length === 0) return '';
        return `<${params.map(this.printTypeParam).join(', ')}>`;
    }

    private printTypeParamsDecl = (params?: Array<TypeParamDecl>) => {
        if (params == null || params.length === 0) return '';
        return `<${params.map(this.printTypeParamDecl).join(', ')}>`;
    }

    private printDoc = (doc?: string | null) => {
        return (doc == null || doc.trim() == '') ? '' :
`/**
${doc}
**/`;
    }

}
declare module AmbientModule {

    interface AmbientInterface {
        anNewFieldAddedByExtension: Array<ANGLE_instanced_arrays>;
    }

    enum AmbientEnum {
        ExtendedThree,
        ExtendedFour,
    }

    module AmbientSubmodule {

        type SomeAlias = Ambient;

    }

}
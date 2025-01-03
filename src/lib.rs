use zed_extension_api as zed;

struct Progress4GLLanguage;

impl zed::Extension for Progress4GLLanguage {
    fn new() -> Self
    where
        Self: Sized {
        Progress4GLLanguage
    }
}

zed::register_extension!(Progress4GLLanguage);

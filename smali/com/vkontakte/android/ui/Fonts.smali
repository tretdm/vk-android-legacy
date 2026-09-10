.class public Lcom/vkontakte/android/ui/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# static fields
.field private static condensed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static lightItalicTypeface:Landroid/graphics/Typeface;

.field private static lightTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ui/Fonts;->condensed:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRobotoCondensed(I)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "style"    # I

    .prologue
    .line 39
    sget-object v2, Lcom/vkontakte/android/ui/Fonts;->condensed:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    sget-object v2, Lcom/vkontakte/android/ui/Fonts;->condensed:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 64
    :goto_0
    return-object v2

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Landroid/graphics/Typeface;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 43
    const-string v2, "sans-serif-condensed"

    invoke-static {v2, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 63
    :goto_1
    sget-object v2, Lcom/vkontakte/android/ui/Fonts;->condensed:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 64
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, ""

    .line 46
    .local v0, "file":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 58
    const-string v0, "fonts/RobotoCondensed-Regular.ttf"

    .line 61
    :goto_2
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    .line 48
    :pswitch_0
    const-string v0, "fonts/RobotoCondensed-Bold.ttf"

    .line 49
    goto :goto_2

    .line 51
    :pswitch_1
    const-string v0, "fonts/RobotoCondensed-Italic.ttf"

    .line 52
    goto :goto_2

    .line 54
    :pswitch_2
    const-string v0, "fonts/RobotoCondensed-BoldItalic.ttf"

    .line 55
    goto :goto_2

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRobotoLight()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    .line 24
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 20
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    .line 24
    :goto_1
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method public static getRobotoLightItalic()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 31
    const-string v0, "sans-serif-light"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 35
    :goto_1
    sget-object v0, Lcom/vkontakte/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-LightItalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method

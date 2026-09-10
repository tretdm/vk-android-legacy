.class public Lcom/facebook/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/WebDialog$Builder;,
        Lcom/facebook/WebDialog$BuilderBase;,
        Lcom/facebook/WebDialog$DialogWebViewClient;,
        Lcom/facebook/WebDialog$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field private static final DIALOG_AUTHORITY_FORMAT:Ljava/lang/String; = "m.%s"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_E2E:Ljava/lang/String; = "e2e"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final MAX_BUFFER_SCREEN_WIDTH:I = 0x400

.field private static final MIN_SCALE_FACTOR:D = 0.6

.field private static final NO_BUFFER_SCREEN_WIDTH:I = 0x200

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    iput-boolean v0, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    .line 94
    iput-boolean v0, p0, Lcom/facebook/WebDialog;->isDetached:Z

    .line 132
    iput-object p2, p0, Lcom/facebook/WebDialog;->url:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/WebDialog$OnCompleteListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "theme"    # I
    .param p5, "listener"    # Lcom/facebook/WebDialog$OnCompleteListener;

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 93
    iput-boolean v4, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    .line 94
    iput-boolean v4, p0, Lcom/facebook/WebDialog;->isDetached:Z

    .line 147
    if-nez p3, :cond_0

    .line 148
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 150
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_0
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "m.%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "facebook.com"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialog/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/facebook/WebDialog;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/WebDialog;->url:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    .line 157
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/facebook/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/WebDialog;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/facebook/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/WebDialog;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/facebook/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/WebDialog;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/facebook/WebDialog;->isDetached:Z

    return v0
.end method

.method static synthetic access$4(Lcom/facebook/WebDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/WebDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/WebDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/WebDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 160
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 161
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 162
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 163
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 164
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 166
    .local v2, "parameter":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 167
    check-cast v2, Ljava/lang/String;

    .end local v2    # "parameter":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private createCrossImage()V
    .locals 3

    .prologue
    .line 321
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 323
    iget-object v1, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/WebDialog$3;

    invoke-direct {v2, p0}, Lcom/facebook/WebDialog$3;-><init>(Lcom/facebook/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, "crossDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 359
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v2, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 361
    const-string v5, "&"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 377
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 362
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_1
    aget-object v1, v0, v4

    .line 363
    .local v1, "parameter":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "v":[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 367
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    const/4 v7, 0x1

    aget-object v7, v3, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 367
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    :cond_3
    array-length v6, v3

    if-ne v6, v9, :cond_2

    .line 370
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private getMargins()Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 269
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 270
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 272
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 273
    .local v8, "width":I
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 276
    .local v1, "height":I
    int-to-float v10, v8

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    float-to-int v6, v10

    .line 277
    .local v6, "scaledWidth":I
    const/16 v10, 0x200

    if-gt v6, v10, :cond_0

    .line 278
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 290
    .local v4, "scaleFactor":D
    :goto_0
    int-to-double v10, v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v2, v10

    .line 291
    .local v2, "leftRightMargin":I
    int-to-double v10, v1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v4

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-int v7, v10

    .line 293
    .local v7, "topBottomMargin":I
    new-instance v10, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    .line 279
    .end local v2    # "leftRightMargin":I
    .end local v4    # "scaleFactor":D
    .end local v7    # "topBottomMargin":I
    :cond_0
    const/16 v10, 0x400

    if-lt v6, v10, :cond_1

    .line 280
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 281
    .restart local v4    # "scaleFactor":D
    goto :goto_0

    .line 284
    .end local v4    # "scaleFactor":D
    :cond_1
    const-wide v10, 0x3fe3333333333333L    # 0.6

    .line 285
    rsub-int v12, v6, 0x400

    int-to-double v12, v12

    .line 286
    const-wide/high16 v14, 0x4080000000000000L    # 512.0

    .line 285
    div-double/2addr v12, v14

    .line 287
    const-wide v14, 0x3fd999999999999aL    # 0.4

    .line 285
    mul-double/2addr v12, v14

    .line 284
    add-double v4, v10, v12

    .restart local v4    # "scaleFactor":D
    goto :goto_0
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v3, "fbconnect"

    const-string v4, "http"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 385
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/WebDialog;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 387
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/WebDialog;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private sendCancelToListener()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 318
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "RuntimeException":Ljava/lang/RuntimeException;
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 308
    check-cast v0, Ljava/lang/RuntimeException;

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/facebook/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Ljava/lang/RuntimeException;)V

    .line 314
    .end local v0    # "RuntimeException":Ljava/lang/RuntimeException;
    :cond_0
    return-void

    .line 310
    .restart local v0    # "RuntimeException":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .end local v0    # "RuntimeException":Ljava/lang/RuntimeException;
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .restart local v0    # "RuntimeException":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/WebDialog;->listenerCalled:Z

    .line 299
    iget-object v0, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Ljava/lang/RuntimeException;)V

    .line 301
    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 6
    .param p1, "margin"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 340
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    .line 342
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 343
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 344
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/WebDialog$DialogWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/WebDialog;Lcom/facebook/WebDialog$DialogWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 345
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 352
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    iget-object v1, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    iget-object v1, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 356
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 196
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    :cond_2
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/WebDialog;->isDetached:Z

    .line 213
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 218
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 220
    new-instance v2, Lcom/facebook/WebDialog$1;

    invoke-direct {v2, p0}, Lcom/facebook/WebDialog$1;-><init>(Lcom/facebook/WebDialog;)V

    invoke-virtual {p0, v2}, Lcom/facebook/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 228
    iget-object v2, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 229
    iget-object v2, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/facebook/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/facebook/WebDialog$2;

    invoke-direct {v3, p0}, Lcom/facebook/WebDialog$2;-><init>(Lcom/facebook/WebDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 238
    invoke-virtual {p0, v5}, Lcom/facebook/WebDialog;->requestWindowFeature(I)Z

    .line 239
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 242
    invoke-direct {p0}, Lcom/facebook/WebDialog;->getMargins()Landroid/util/Pair;

    move-result-object v1

    .line 243
    .local v1, "margins":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 249
    invoke-direct {p0}, Lcom/facebook/WebDialog;->createCrossImage()V

    .line 254
    iget-object v2, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 256
    .local v0, "crossWidth":I
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/facebook/WebDialog;->setUpWebView(I)V

    .line 261
    iget-object v2, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 262
    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 261
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v2, p0, Lcom/facebook/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 264
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 263
    invoke-virtual {p0, v2, v3}, Lcom/facebook/WebDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/WebDialog;->isDetached:Z

    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 208
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/WebDialog$OnCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/WebDialog$OnCompleteListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/WebDialog;->onCompleteListener:Lcom/facebook/WebDialog$OnCompleteListener;

    .line 180
    return-void
.end method

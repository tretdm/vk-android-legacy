.class public Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "ButtonsPostDisplayItem.java"


# instance fields
.field private post:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 27
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 28
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;->deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    return-void
.end method

.method private deletePost(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 4
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v3, p1, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 93
    new-instance v1, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$3;-><init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 112
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-virtual {v0, p2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 43
    move-object v0, p2

    .line 44
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 45
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    :cond_0
    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem$2;-><init>(Lcom/vkontakte/android/ui/posts/ButtonsPostDisplayItem;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-object v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 88
    return-void
.end method

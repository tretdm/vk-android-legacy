.class public Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "TextPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public gray:Z

.field public text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_text"    # Ljava/lang/CharSequence;
    .param p4, "_gray"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 21
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    .line 22
    iput-boolean p4, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->gray:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 37
    move-object v2, p2

    .line 38
    .local v2, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 39
    const v3, 0x7f030065

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    new-instance v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;

    invoke-direct {v0, v4}, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;)V

    .line 41
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    const v3, 0x7f090111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    .line 42
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fontSize"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "k":I
    iget-object v3, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    .end local v1    # "k":I
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;

    .line 48
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;
    iget-object v3, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem;->gray:Z

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    const/high16 v4, 0x55000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    :goto_0
    return-object v2

    .line 52
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/ui/posts/TextPostDisplayItem$ViewHolder;->text:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 66
    return-void
.end method

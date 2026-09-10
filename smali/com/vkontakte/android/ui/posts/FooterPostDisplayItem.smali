.class public Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "FooterPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field private commentsOnClick:Landroid/view/View$OnClickListener;

.field public e:Lcom/vkontakte/android/NewsEntry;

.field private feedback:Z

.field private likesOnClick:Landroid/view/View$OnClickListener;

.field private liking:Z

.field private repostsOnClick:Landroid/view/View$OnClickListener;

.field private showLikes:Z


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsEntry;ZZ)V
    .locals 2
    .param p1, "_e"    # Lcom/vkontakte/android/NewsEntry;
    .param p2, "_feedback"    # Z
    .param p3, "likes"    # Z

    .prologue
    .line 30
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    .line 32
    new-instance v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$1;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->commentsOnClick:Landroid/view/View$OnClickListener;

    .line 41
    new-instance v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$2;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->likesOnClick:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$3;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->repostsOnClick:Landroid/view/View$OnClickListener;

    .line 55
    iput-boolean p3, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->showLikes:Z

    .line 56
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->feedback:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->like(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->liking:Z

    return-void
.end method

.method private like(ZLandroid/view/View;)V
    .locals 10
    .param p1, "liked"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 180
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 182
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->liking:Z

    if-eqz v0, :cond_1

    .line 230
    :goto_1
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->liking:Z

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .local v8, "lOid":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v9, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 185
    .local v9, "lPid":I
    new-instance v0, Lcom/vkontakte/android/api/WallLike;

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const-string v7, ""

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/api/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    .line 186
    new-instance v1, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;

    move-object v2, p0

    move-object v3, p2

    move v4, v8

    move v5, v9

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$4;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;Landroid/view/View;IIZ)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallLike;->setCallback(Lcom/vkontakte/android/api/WallLike$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/16 v6, 0xf

    const/16 v5, 0xa

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 71
    move-object v3, p2

    .line 72
    .local v3, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 73
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->feedback:Z

    if-eqz v4, :cond_2

    const v4, 0x7f030061

    :goto_0
    const/4 v7, 0x0

    invoke-static {p1, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 74
    new-instance v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;)V

    .line 75
    .local v0, "holder":Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    const v4, 0x7f090113

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f090112

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    .line 77
    const v4, 0x7f090114

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;

    .line 82
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    .local v1, "padContent":I
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 84
    .local v2, "padEmpty":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numComments:I

    if-lez v4, :cond_3

    .line 85
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 87
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v4, :cond_4

    .line 94
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 96
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v4, :cond_5

    .line 103
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 105
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v9, v1, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    :goto_3
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->showLikes:Z

    if-eqz v4, :cond_6

    .line 112
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_4
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 120
    const v4, 0x7f090155

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->likesOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->repostsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->commentsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->feedback:Z

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 128
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c8

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 129
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 130
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0201b7

    invoke-virtual {v4, v7, v9, v9, v9}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 137
    :goto_5
    iget-object v7, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v4, :cond_8

    move v4, v5

    :goto_6
    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    if-lez v4, :cond_9

    move v4, v5

    :goto_7
    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v7, v8, v9, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 140
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 141
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c8

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 142
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 143
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0201ba

    invoke-virtual {v4, v7, v9, v9, v9}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 150
    :goto_8
    iget-object v7, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v4, :cond_b

    move v4, v5

    :goto_9
    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-object v8, p0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkontakte/android/NewsEntry;

    iget v8, v8, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    if-lez v8, :cond_c

    :goto_a
    int-to-float v5, v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v7, v4, v9, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v5, 0x7f0200ca

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 154
    :cond_1
    return-object v3

    .line 73
    .end local v0    # "holder":Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    .end local v1    # "padContent":I
    .end local v2    # "padEmpty":I
    :cond_2
    const v4, 0x7f030060

    goto/16 :goto_0

    .line 89
    .restart local v0    # "holder":Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    .restart local v1    # "padContent":I
    .restart local v2    # "padEmpty":I
    :cond_3
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 91
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 98
    :cond_4
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 100
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 107
    :cond_5
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 109
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 115
    :cond_6
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 132
    :cond_7
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c6

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 133
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200ca

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 134
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, -0x666667

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 135
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0201b6

    invoke-virtual {v4, v7, v9, v9, v9}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_5

    :cond_8
    move v4, v6

    .line 137
    goto/16 :goto_6

    :cond_9
    move v4, v6

    goto/16 :goto_7

    .line 145
    :cond_a
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200c6

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 146
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0200ca

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 147
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, -0x666667

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 148
    iget-object v4, v0, Lcom/vkontakte/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    check-cast v4, Lcom/vkontakte/android/ui/OverlayTextView;

    const v7, 0x7f0201b9

    invoke-virtual {v4, v7, v9, v9, v9}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_8

    :cond_b
    move v4, v6

    .line 150
    goto/16 :goto_9

    :cond_c
    move v5, v6

    goto/16 :goto_a
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 167
    return-void
.end method

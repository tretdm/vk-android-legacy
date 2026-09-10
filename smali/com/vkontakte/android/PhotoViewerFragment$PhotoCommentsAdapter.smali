.class Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)V
    .locals 0

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;-><init>(Lcom/vkontakte/android/PhotoViewerFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)Lcom/vkontakte/android/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 982
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 987
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f06003b

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0600bc

    const v5, 0x7f060154

    .line 1004
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 1005
    .local v0, "comment":Lcom/vkontakte/android/NewsComment;
    iget-boolean v2, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v2, :cond_1

    .line 1006
    if-nez p2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1008
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1010
    const v2, 0x7f060061

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    :cond_0
    const v2, 0x7f060061

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1053
    :goto_0
    return-object p2

    .line 1019
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1020
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03004a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1021
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1022
    invoke-static {p2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 1023
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter$2;-><init>(Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1033
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const v2, 0x7f06003a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v1, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 1036
    .local v1, "info":Ljava/lang/String;
    iget-object v2, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    :cond_4
    const v2, 0x7f06003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget v2, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    if-lez v2, :cond_5

    .line 1040
    const v2, 0x7f060155

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/vkontakte/android/NewsComment;->numLikes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->access$4(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1049
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$4(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1044
    :cond_5
    const v2, 0x7f060155

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1051
    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020206

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 999
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-boolean v0, v0, Lcom/vkontakte/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.class Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/DocumentsFragment$1;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 412
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0800a7

    .line 417
    move-object v2, p2

    .line 418
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_0

    .line 419
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f03002e

    invoke-static {v3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    .line 422
    .local v0, "doc":Lcom/vkontakte/android/api/Document;
    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const v3, 0x7f0800a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/api/Document;->size:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "info":Ljava/lang/String;
    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v3, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 427
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1500(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$1500(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    :goto_0
    return-object v2

    .line 430
    :cond_1
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

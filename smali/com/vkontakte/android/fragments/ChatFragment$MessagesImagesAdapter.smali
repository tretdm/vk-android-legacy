.class Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2731
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)V
    .locals 0

    .prologue
    .line 2731
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 2739
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2740
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2742
    return v1

    .line 2740
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 2741
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 6
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 2747
    const/4 v1, 0x0

    .line 2748
    .local v1, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2753
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p2, v4

    .line 2754
    const/4 v3, 0x0

    .line 2755
    .local v3, "imgindex":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2763
    const/4 v4, 0x0

    .end local v3    # "imgindex":I
    :goto_2
    return-object v4

    .line 2748
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 2749
    .local v2, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    if-ne v1, p2, :cond_2

    .line 2750
    iget-object v4, v2, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    goto :goto_2

    .line 2751
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2755
    .end local v2    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .restart local v3    # "imgindex":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 2756
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v5, :cond_0

    .line 2757
    if-ne v3, p2, :cond_4

    .line 2758
    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2760
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "_image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v6, p1, v0

    .line 2769
    .local v6, "_item":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v6, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-le v6, v0, :cond_1

    .line 2837
    :cond_0
    :goto_0
    return-void

    .line 2770
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2771
    .local v4, "view":Landroid/view/View;
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;IILandroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

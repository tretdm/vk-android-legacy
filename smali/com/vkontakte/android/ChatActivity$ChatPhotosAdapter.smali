.class Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 1682
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1685
    :cond_0
    :goto_0
    return v3

    .line 1683
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int v0, v4, v2

    .line 1684
    .local v0, "n":I
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1685
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    const v4, 0xbebc200

    if-le v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_2
    add-int v3, v2, v0

    goto :goto_0

    .line 1684
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 1685
    goto :goto_2
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1691
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v2

    const v3, 0x77359400

    if-le v2, v3, :cond_1

    .line 1692
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$12(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1712
    :goto_0
    return-object v2

    .line 1693
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 1695
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 1696
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1698
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr p2, v2

    .line 1699
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 1700
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1702
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr p2, v2

    .line 1704
    const/4 v0, 0x0

    .line 1705
    .local v0, "n":I
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1712
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1705
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1706
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1707
    if-ne v0, p2, :cond_6

    move-object v2, v1

    goto/16 :goto_0

    .line 1708
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;-><init>(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1731
    :cond_0
    return-void
.end method

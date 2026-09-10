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
    .line 2047
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)V
    .locals 0

    .prologue
    .line 2047
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 2056
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return v3

    .line 2057
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

    .line 2058
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

    if-nez v4, :cond_4

    .line 2059
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v4, 0x5

    aget v2, v2, v4

    if-lez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 2060
    :cond_3
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

    if-le v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_2
    add-int v3, v2, v0

    goto :goto_0

    .line 2058
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 2060
    goto :goto_2

    .line 2061
    .end local v0    # "n":I
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 10
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v4, 0x82

    .line 2068
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v0

    const v1, 0x77359400

    if-le v0, v1, :cond_1

    .line 2069
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2095
    :goto_0
    return-object v0

    .line 2070
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2072
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 2073
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2075
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2076
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 2077
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 2079
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2081
    const/4 v8, 0x0

    .line 2082
    .local v8, "n":I
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v0, v0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2089
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    iget-object v1, v0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_7

    .line 2095
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2082
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2083
    .local v9, "s":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 2084
    if-ne v8, p2, :cond_6

    move-object v0, v9

    goto/16 :goto_0

    .line 2085
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2089
    .end local v9    # "s":Ljava/lang/String;
    :cond_7
    aget-object v6, v1, v0

    .line 2090
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_8

    move-object v7, v6

    .line 2091
    check-cast v7, Lcom/vkontakte/android/GeoAttachment;

    .line 2092
    .local v7, "g":Lcom/vkontakte/android/GeoAttachment;
    iget-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2089
    .end local v7    # "g":Lcom/vkontakte/android/GeoAttachment;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 2050
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
    .line 2101
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;->this$0:Lcom/vkontakte/android/ChatActivity;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter$1;-><init>(Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2114
    :cond_0
    return-void
.end method

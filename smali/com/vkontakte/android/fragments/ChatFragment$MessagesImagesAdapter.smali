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
    .line 1925
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)V
    .locals 0

    .prologue
    .line 1925
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 1933
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1934
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1940
    return v1

    .line 1934
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1935
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v2, :cond_3

    .line 1936
    instance-of v2, v0, Lcom/vkontakte/android/VideoAttachment;

    if-nez v2, :cond_3

    .line 1937
    instance-of v2, v0, Lcom/vkontakte/android/GeoAttachment;

    if-nez v2, :cond_3

    .line 1938
    instance-of v2, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1939
    :cond_2
    instance-of v2, v0, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v2, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 12
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1945
    const/4 v8, 0x0

    .line 1946
    .local v8, "i":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1951
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1952
    const/4 v10, 0x0

    .line 1953
    .local v10, "imgindex":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1983
    const/4 v0, 0x0

    .end local v10    # "imgindex":I
    :goto_2
    return-object v0

    .line 1946
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1947
    .local v9, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    if-ne v8, p2, :cond_2

    .line 1948
    iget-object v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    goto :goto_2

    .line 1949
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1953
    .end local v9    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .restart local v10    # "imgindex":I
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 1954
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v0, :cond_5

    .line 1955
    if-ne v10, p2, :cond_4

    .line 1956
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1958
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1959
    goto :goto_1

    :cond_5
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v0, :cond_7

    .line 1960
    if-ne v10, p2, :cond_6

    .line 1961
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto :goto_2

    .line 1963
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 1964
    goto :goto_1

    :cond_7
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v0, :cond_9

    .line 1965
    if-ne v10, p2, :cond_8

    move-object v7, v6

    .line 1966
    check-cast v7, Lcom/vkontakte/android/GeoAttachment;

    .line 1967
    .local v7, "ga":Lcom/vkontakte/android/GeoAttachment;
    iget-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0x82

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1969
    .end local v7    # "ga":Lcom/vkontakte/android/GeoAttachment;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 1970
    goto :goto_1

    :cond_9
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v0, :cond_b

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1971
    if-ne v10, p2, :cond_a

    .line 1972
    check-cast v6, Lcom/vkontakte/android/DocumentAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    goto :goto_2

    .line 1974
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 1975
    goto :goto_1

    :cond_b
    instance-of v0, v6, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v0, :cond_0

    .line 1976
    if-ne v10, p2, :cond_c

    move-object v11, v6

    .line 1977
    check-cast v11, Lcom/vkontakte/android/StickerAttachment;

    .line 1978
    .local v11, "sa":Lcom/vkontakte/android/StickerAttachment;
    iget-object v0, v11, Lcom/vkontakte/android/StickerAttachment;->images:[Ljava/lang/String;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$28(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_2

    .line 1980
    .end local v11    # "sa":Lcom/vkontakte/android/StickerAttachment;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1928
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
    .line 1988
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v6, p1, v0

    .line 1989
    .local v6, "_item":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt v6, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-le v6, v0, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1991
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

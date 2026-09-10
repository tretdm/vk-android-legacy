.class public Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "NewsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NewsPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 744
    const/4 v1, 0x1

    .line 749
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 751
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 752
    add-int/lit8 v1, v1, 0x1

    .line 753
    :cond_1
    return v1

    .line 749
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 750
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 759
    packed-switch p2, :pswitch_data_0

    .line 768
    const/4 v1, 0x0

    .line 769
    .local v1, "imgindex":I
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 783
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    .line 785
    .end local v1    # "imgindex":I
    :goto_0
    return-object v2

    .line 766
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto :goto_0

    .line 769
    .restart local v1    # "imgindex":I
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 770
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_2

    .line 771
    add-int/lit8 v1, v1, 0x1

    .line 772
    if-ne v1, p2, :cond_2

    .line 773
    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 776
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_0

    .line 777
    add-int/lit8 v1, v1, 0x1

    .line 778
    if-ne v1, p2, :cond_0

    .line 779
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v2, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    .end local v1    # "imgindex":I
    :catch_0
    move-exception v2

    .line 785
    const/4 v2, 0x0

    goto :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

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
    .line 790
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;->this$0:Lcom/vkontakte/android/NewsView;

    new-instance v1, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/NewsView$NewsPhotosAdapter$1;-><init>(Lcom/vkontakte/android/NewsView$NewsPhotosAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->post(Ljava/lang/Runnable;)Z

    .line 826
    return-void
.end method

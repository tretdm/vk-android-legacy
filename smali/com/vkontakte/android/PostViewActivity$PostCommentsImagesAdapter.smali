.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "item"    # I

    .prologue
    .line 977
    const/4 v1, 0x1

    .line 978
    .local v1, "count":I
    if-nez p1, :cond_1

    .line 979
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 982
    :cond_1
    return v1

    .line 979
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 980
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 987
    if-nez p1, :cond_4

    .line 988
    packed-switch p2, :pswitch_data_0

    .line 992
    const/4 v8, 0x0

    .line 993
    .local v8, "imgindex":I
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1017
    const-string v0, ""

    .end local v8    # "imgindex":I
    :goto_0
    return-object v0

    .line 990
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto :goto_0

    .line 993
    .restart local v8    # "imgindex":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 994
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v1, :cond_2

    .line 995
    add-int/lit8 v8, v8, 0x1

    .line 996
    if-ne v8, p2, :cond_2

    .line 997
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1000
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    instance-of v1, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v1, :cond_3

    .line 1001
    add-int/lit8 v8, v8, 0x1

    .line 1002
    if-ne v8, p2, :cond_3

    .line 1003
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto :goto_0

    .line 1006
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    instance-of v1, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_0

    .line 1007
    add-int/lit8 v8, v8, 0x1

    .line 1008
    if-ne v8, p2, :cond_0

    move-object v7, v6

    .line 1009
    check-cast v7, Lcom/vkontakte/android/GeoAttachment;

    .line 1010
    .local v7, "gp":Lcom/vkontakte/android/GeoAttachment;
    iget-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0xb4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1015
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .end local v7    # "gp":Lcom/vkontakte/android/GeoAttachment;
    .end local v8    # "imgindex":I
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-object v0, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1022
    if-nez p1, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1069
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

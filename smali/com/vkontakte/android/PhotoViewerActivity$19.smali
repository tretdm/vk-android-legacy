.class Lcom/vkontakte/android/PhotoViewerActivity$19;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetUserPhotos$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->loadNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->val$uid:I

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$13(Lcom/vkontakte/android/PhotoViewerActivity;Z)V

    .line 589
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 6
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$12(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$12(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_0

    .line 575
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->access$13(Lcom/vkontakte/android/PhotoViewerActivity;Z)V

    .line 576
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/vkontakte/android/ProfilePhotosView;->ACTION_ADD_PHOTOS:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "list_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Lcom/vkontakte/android/Photo;

    .line 579
    .local v2, "pa":[Lcom/vkontakte/android/Photo;
    invoke-virtual {p2, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 580
    const-string v3, "photos"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 581
    const-string v3, "uid"

    iget v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->val$uid:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 583
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$12(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->access$14(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    .line 584
    return-void

    .line 573
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pa":[Lcom/vkontakte/android/Photo;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v3, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$19;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$12(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    aput-object v3, v4, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

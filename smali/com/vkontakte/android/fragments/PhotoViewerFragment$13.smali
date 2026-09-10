.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->loadPhotoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

.field private final synthetic val$p:Lcom/vkontakte/android/Photo;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Lcom/vkontakte/android/Photo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 481
    return-void
.end method

.method public success(IIIZZ)V
    .locals 3
    .param p1, "likes"    # I
    .param p2, "comments"    # I
    .param p3, "tags"    # I
    .param p4, "liked"    # Z
    .param p5, "canComment"    # Z

    .prologue
    .line 468
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can comment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    iput p1, v0, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    iput p2, v0, Lcom/vkontakte/android/Photo;->nComments:I

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    iput p3, v0, Lcom/vkontakte/android/Photo;->nTags:I

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    iput-boolean p4, v0, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    iput-boolean p5, v0, Lcom/vkontakte/android/Photo;->canComment:Z

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->val$p:Lcom/vkontakte/android/Photo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$13;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 476
    return-void
.end method

.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->doShowTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 412
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoTag;

    .line 413
    .local v1, "tag":Lcom/vkontakte/android/PhotoTag;
    iget v2, v1, Lcom/vkontakte/android/PhotoTag;->userID:I

    if-lez v2, :cond_0

    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget v3, v1, Lcom/vkontakte/android/PhotoTag;->userID:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v2, "ProfileFragment"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$11;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 418
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

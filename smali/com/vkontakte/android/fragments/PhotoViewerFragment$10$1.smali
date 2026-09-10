.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosEdit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->val$text:Ljava/lang/String;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    return-void

    .line 451
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 441
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->val$text:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.UPDATE_PHOTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    const-string v1, "photo"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 447
    return-void
.end method

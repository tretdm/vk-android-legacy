.class Lcom/vkontakte/android/NewPostActivity$10$1;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity$10;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewPostActivity$10;

.field private final synthetic val$signer:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity$10;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->this$1:Lcom/vkontakte/android/NewPostActivity$10;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->val$signer:Lcom/vkontakte/android/UserProfile;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->this$1:Lcom/vkontakte/android/NewPostActivity$10;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity$10;->access$0(Lcom/vkontakte/android/NewPostActivity$10;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->val$signer:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->this$1:Lcom/vkontakte/android/NewPostActivity$10;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity$10;->access$0(Lcom/vkontakte/android/NewPostActivity$10;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vkontakte.ru/id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->val$signer:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$10$1;->val$signer:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V

    .line 392
    return-void
.end method

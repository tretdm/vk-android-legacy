.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->editDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

.field private final synthetic val$ed:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->val$ed:Landroid/widget/EditText;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 435
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->val$ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/api/PhotosEdit;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/Photo;->id:I

    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/PhotosEdit;-><init>(IILjava/lang/String;)V

    .line 437
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PhotosEdit;->setCallback(Lcom/vkontakte/android/api/PhotosEdit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 455
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$10;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 456
    return-void
.end method

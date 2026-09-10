.class Lcom/vkontakte/android/fragments/ChatMembersFragment$19;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 699
    sget-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/UploaderService;->cancel(I)V

    .line 702
    :cond_0
    return-void
.end method

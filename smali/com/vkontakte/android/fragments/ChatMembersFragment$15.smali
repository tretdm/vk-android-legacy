.class Lcom/vkontakte/android/fragments/ChatMembersFragment$15;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->removeUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->val$idx:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2400(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    .line 623
    return-void
.end method

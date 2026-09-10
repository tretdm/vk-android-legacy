.class Lcom/vkontakte/android/fragments/ChatMembersFragment$12;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->showDndDialog()V
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
    .line 549
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 554
    return-void
.end method

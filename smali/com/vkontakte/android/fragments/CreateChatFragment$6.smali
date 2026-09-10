.class Lcom/vkontakte/android/fragments/CreateChatFragment$6;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$6;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$6;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 156
    const/4 v0, 0x0

    return v0
.end method

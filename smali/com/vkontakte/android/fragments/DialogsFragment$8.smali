.class Lcom/vkontakte/android/fragments/DialogsFragment$8;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$SearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->val$refresh:Z

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$8;)Lcom/vkontakte/android/fragments/DialogsFragment;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    return-object v0
.end method


# virtual methods
.method public onDialogsLoaded(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "dlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$8(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    .line 411
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$8$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->val$refresh:Z

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vkontakte/android/fragments/DialogsFragment$8$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$8;ZLjava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method

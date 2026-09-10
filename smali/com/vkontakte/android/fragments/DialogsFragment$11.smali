.class Lcom/vkontakte/android/fragments/DialogsFragment$11;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetDialogsCallback;


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

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogsLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "rdlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1302(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    .line 655
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$11$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$11;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 680
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1302(Lcom/vkontakte/android/fragments/DialogsFragment;Z)Z

    .line 684
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 695
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$11;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/fragments/DialogsFragment$11$2;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$11;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

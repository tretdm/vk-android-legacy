.class Lcom/vkontakte/android/fragments/DialogsFragment$7;
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

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->val$refresh:Z

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$7;)Lcom/vkontakte/android/fragments/DialogsFragment;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    return-object v0
.end method


# virtual methods
.method public onDialogsLoaded(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 376
    .local p1, "rdlgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$8(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    .line 377
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->val$refresh:Z

    invoke-direct {v1, p0, v2, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$7;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    :cond_0
    return-void
.end method

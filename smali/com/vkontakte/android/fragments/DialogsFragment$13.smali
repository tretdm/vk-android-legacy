.class Lcom/vkontakte/android/fragments/DialogsFragment$13;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$20(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 752
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$8(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$21(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;->notifyDataSetChanged()V

    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$13;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 755
    return-void
.end method

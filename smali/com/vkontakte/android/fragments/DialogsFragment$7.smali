.class Lcom/vkontakte/android/fragments/DialogsFragment$7;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
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
    .line 404
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$700(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$800(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$7;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 410
    return-void
.end method

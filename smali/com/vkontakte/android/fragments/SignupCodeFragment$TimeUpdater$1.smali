.class Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;
.super Ljava/lang/Object;
.source "SignupCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;->this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;->this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)Lcom/vkontakte/android/fragments/SignupCodeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;->this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)Lcom/vkontakte/android/fragments/SignupCodeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;->this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)Lcom/vkontakte/android/fragments/SignupCodeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater$1;->this$1:Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment$TimeUpdater;)Lcom/vkontakte/android/fragments/SignupCodeFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupCodeFragment;->access$1(Lcom/vkontakte/android/fragments/SignupCodeFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

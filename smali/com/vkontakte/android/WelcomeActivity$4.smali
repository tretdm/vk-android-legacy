.class Lcom/vkontakte/android/WelcomeActivity$4;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v1, v1, Lcom/vkontakte/android/WelcomeActivity;->page:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/WelcomeActivity;->hasSyncAPI:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v1, v1, Lcom/vkontakte/android/WelcomeActivity;->page:I

    if-nez v1, :cond_3

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "option"

    iget-object v2, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v2, v2, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/WelcomeActivity;->finish()V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/WelcomeActivity;->hasSyncAPI:Z

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-static {v1}, Lcom/vkontakte/android/WelcomeActivity;->access$1(Lcom/vkontakte/android/WelcomeActivity;)V

    .line 115
    :cond_2
    :goto_0
    return-void

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v2, v1, Lcom/vkontakte/android/WelcomeActivity;->page:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/WelcomeActivity;->page:I

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v1, v1, Lcom/vkontakte/android/WelcomeActivity;->page:I

    if-ne v1, v3, :cond_4

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-static {v1}, Lcom/vkontakte/android/WelcomeActivity;->access$2(Lcom/vkontakte/android/WelcomeActivity;)V

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v1, v1, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const v3, 0x7f040008

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 113
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v1, v1, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const v3, 0x7f04000a

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 114
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$4;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v1, v1, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0
.end method

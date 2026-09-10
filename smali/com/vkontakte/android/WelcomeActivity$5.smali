.class Lcom/vkontakte/android/WelcomeActivity$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/WelcomeActivity;->finish()V

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v1, v0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v0, v0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WelcomeActivity;->access$3(Lcom/vkontakte/android/WelcomeActivity;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v0, v0, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v0, v0, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$5;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget-object v0, v0, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0
.end method

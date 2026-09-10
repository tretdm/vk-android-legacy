.class Lcom/vkontakte/android/AuthActivity$5;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AuthActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardStateChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    const v3, 0x7f080083

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity$5;->this$0:Lcom/vkontakte/android/AuthActivity;

    const v3, 0x7f08007e

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1
.end method

.class Lcom/vkontakte/android/AuthActivity$6;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity$6;->this$0:Lcom/vkontakte/android/AuthActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AuthActivity;->access$1(Lcom/vkontakte/android/AuthActivity;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

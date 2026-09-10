.class Lcom/vkontakte/android/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/LoginActivity$1;->this$0:Lcom/vkontakte/android/LoginActivity;

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
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/LoginActivity$1;->this$0:Lcom/vkontakte/android/LoginActivity;

    invoke-static {v0}, Lcom/vkontakte/android/LoginActivity;->access$000(Lcom/vkontakte/android/LoginActivity;)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/vkontakte/android/WelcomeActivity$3;
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
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/WelcomeActivity$3;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity$3;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkontakte/android/WelcomeActivity;->access$000(Lcom/vkontakte/android/WelcomeActivity;I)V

    .line 70
    return-void
.end method

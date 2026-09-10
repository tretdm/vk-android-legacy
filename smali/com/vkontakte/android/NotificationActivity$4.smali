.class Lcom/vkontakte/android/NotificationActivity$4;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationActivity$4;->this$0:Lcom/vkontakte/android/NotificationActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/NotificationActivity$4;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationActivity;->access$1(Lcom/vkontakte/android/NotificationActivity;)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/NotificationActivity$4;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationActivity;->finish()V

    .line 52
    return-void
.end method

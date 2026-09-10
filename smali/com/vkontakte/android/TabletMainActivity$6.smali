.class Lcom/vkontakte/android/TabletMainActivity$6;
.super Ljava/lang/Object;
.source "TabletMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/TabletMainActivity;->showPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/TabletMainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/TabletMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$6;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/TabletMainActivity$6;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/TabletMainActivity;->access$3(Lcom/vkontakte/android/TabletMainActivity;Landroid/app/Dialog;)V

    .line 506
    return-void
.end method

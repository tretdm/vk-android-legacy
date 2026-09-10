.class Lcom/vkontakte/android/ChatActivity$24;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showEmojiPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$24;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$24;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ChatActivity;->access$36(Lcom/vkontakte/android/ChatActivity;J)V

    .line 1059
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$24;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ChatActivity;->access$37(Lcom/vkontakte/android/ChatActivity;Landroid/app/Dialog;)V

    .line 1060
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$24;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v1, 0x7f060189

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1061
    return-void
.end method

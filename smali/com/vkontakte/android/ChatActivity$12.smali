.class Lcom/vkontakte/android/ChatActivity$12;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$12;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 600
    return-void
.end method

.method public success(IZZ)V
    .locals 1
    .param p1, "time"    # I
    .param p2, "online"    # Z
    .param p3, "f"    # Z

    .prologue
    .line 593
    if-nez p2, :cond_0

    .line 594
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$12;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0, p1, p3}, Lcom/vkontakte/android/ChatActivity;->access$28(Lcom/vkontakte/android/ChatActivity;IZ)V

    .line 595
    :cond_0
    return-void
.end method

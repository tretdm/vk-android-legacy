.class Lcom/vkontakte/android/fragments/ChatFragment$24$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$24;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1400(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1379
    return-void
.end method

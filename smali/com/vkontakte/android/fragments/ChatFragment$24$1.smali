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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$24;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1368
    return-void
.end method

.class Lcom/vkontakte/android/fragments/ChatFragment$23$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$23;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$23;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$23$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$23;

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$23$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$23;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$23;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$23;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$15(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1354
    return-void
.end method

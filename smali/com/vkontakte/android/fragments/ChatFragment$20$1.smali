.class Lcom/vkontakte/android/fragments/ChatFragment$20$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$20;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$20;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$20;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$20;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$20;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$20;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1014
    return-void
.end method

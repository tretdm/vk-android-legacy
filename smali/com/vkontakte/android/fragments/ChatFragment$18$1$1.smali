.class Lcom/vkontakte/android/fragments/ChatFragment$18$1$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$18$1;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/fragments/ChatFragment$18$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$18$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$18$1$1;->this$2:Lcom/vkontakte/android/fragments/ChatFragment$18$1;

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$18$1$1;->this$2:Lcom/vkontakte/android/fragments/ChatFragment$18$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$18$1;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$18$1;)Lcom/vkontakte/android/fragments/ChatFragment$18;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment$18;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$18;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$63(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1146
    return-void
.end method

.class Lcom/vkontakte/android/JoinActivity$12;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->retryLater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$12;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$12;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$17(Lcom/vkontakte/android/JoinActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$12;->this$0:Lcom/vkontakte/android/JoinActivity;

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$12;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v1}, Lcom/vkontakte/android/JoinActivity;->access$20(Lcom/vkontakte/android/JoinActivity;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/JoinActivity;->access$6(Lcom/vkontakte/android/JoinActivity;ZZ)V

    .line 294
    :cond_0
    return-void
.end method

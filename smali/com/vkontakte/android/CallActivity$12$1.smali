.class Lcom/vkontakte/android/CallActivity$12$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipReply$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$12;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 658
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "upStream"    # Ljava/lang/String;
    .param p3, "downStream"    # Ljava/lang/String;
    .param p4, "hash"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p4}, Lcom/vkontakte/android/CallActivity;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$37(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/CallActivity;->publish(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$1;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/CallActivity;->play(Ljava/lang/String;)V

    .line 653
    return-void

    .line 650
    :cond_1
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

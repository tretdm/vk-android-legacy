.class Lcom/vkontakte/android/JoinActivity$9;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AuthCheckPhone$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->checkPhone(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$9;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$9;->this$0:Lcom/vkontakte/android/JoinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/JoinActivity;->access$12(Lcom/vkontakte/android/JoinActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 197
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$9;->this$0:Lcom/vkontakte/android/JoinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/JoinActivity;->access$12(Lcom/vkontakte/android/JoinActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 192
    return-void
.end method

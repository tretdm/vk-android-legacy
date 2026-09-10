.class Lcom/vkontakte/android/WikiViewActivity$6;
.super Ljava/lang/Object;
.source "WikiViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotesGetById$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiViewActivity;->loadNote(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WikiViewActivity$6;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$6;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$10(Lcom/vkontakte/android/WikiViewActivity;I)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$6;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$9(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 251
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$6;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/WikiViewActivity;->access$7(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity$6;->this$0:Lcom/vkontakte/android/WikiViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/WikiViewActivity;->access$9(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 244
    return-void
.end method

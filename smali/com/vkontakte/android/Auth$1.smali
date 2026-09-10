.class final Lcom/vkontakte/android/Auth$1;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

.field final synthetic val$login:Ljava/lang/String;

.field final synthetic val$pass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/Auth$1;->val$login:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkontakte/android/Auth$1;->val$pass:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    invoke-static {}, Lcom/vkontakte/android/Auth;->access$000()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "username"

    iget-object v4, p0, Lcom/vkontakte/android/Auth$1;->val$login:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "password"

    iget-object v4, p0, Lcom/vkontakte/android/Auth$1;->val$pass:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v1, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "password"

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, v1}, Lcom/vkontakte/android/Auth;->access$100(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v2

    .line 56
    .local v2, "r":I
    iget-object v3, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/vkontakte/android/Auth$1;->val$act:Lcom/vkontakte/android/Auth$AuthResultReceiver;

    invoke-interface {v3, v2, v1}, Lcom/vkontakte/android/Auth$AuthResultReceiver;->authDone(ILjava/util/HashMap;)V

    .line 59
    :cond_0
    return-void
.end method

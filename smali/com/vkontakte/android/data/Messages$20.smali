.class Lcom/vkontakte/android/data/Messages$20;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->delete(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$20;->val$ids:Ljava/util/ArrayList;

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1107
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$20;->val$ids:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1102
    return-void
.end method

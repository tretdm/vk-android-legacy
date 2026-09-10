.class Lcom/vkontakte/android/data/Messages$10;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getUnreadCount(ILcom/vkontakte/android/data/Messages$GetUnreadCountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;

.field private final synthetic val$peer:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$10;->val$callback:Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;

    iput p2, p0, Lcom/vkontakte/android/data/Messages$10;->val$peer:I

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$10;->val$callback:Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;

    iget v1, p0, Lcom/vkontakte/android/data/Messages$10;->val$peer:I

    iget v2, p0, Lcom/vkontakte/android/data/Messages$10;->val$peer:I

    invoke-static {v2}, Lcom/vkontakte/android/data/Messages;->getUnreadCount(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;->onUnreadCountLoaded(II)V

    .line 581
    return-void
.end method

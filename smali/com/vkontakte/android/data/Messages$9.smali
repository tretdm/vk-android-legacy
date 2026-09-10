.class final Lcom/vkontakte/android/data/Messages$9;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getUnreadCount(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$res:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$9;->val$res:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 573
    return-void
.end method

.method public success(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$9;->val$res:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 568
    return-void
.end method

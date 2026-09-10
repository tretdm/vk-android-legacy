.class public Lcom/vkontakte/android/Message$FwdMessage;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FwdMessage"
.end annotation


# instance fields
.field public attachments:[Lcom/vkontakte/android/Attachment;

.field public fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

.field public sender:I

.field public text:Ljava/lang/String;

.field public time:I

.field public username:Ljava/lang/String;

.field public userphoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

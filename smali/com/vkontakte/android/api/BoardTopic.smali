.class public Lcom/vkontakte/android/api/BoardTopic;
.super Ljava/lang/Object;
.source "BoardTopic.java"


# static fields
.field public static final TOPIC_CLOSED:I = 0x1

.field public static final TOPIC_FIXED:I = 0x2


# instance fields
.field public created:I

.field public creator:I

.field public flags:I

.field public gid:I

.field public id:I

.field public lastComment:Ljava/lang/String;

.field public lastCommentUid:I

.field public numComments:I

.field public title:Ljava/lang/String;

.field public updated:I

.field public updatedBy:Lcom/vkontakte/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

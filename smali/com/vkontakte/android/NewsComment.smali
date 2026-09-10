.class public Lcom/vkontakte/android/NewsComment;
.super Ljava/lang/Object;
.source "NewsComment.java"


# instance fields
.field public canDelete:Z

.field public cid:I

.field public cnum:I

.field public isLiked:Z

.field public linkTitles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public links:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numLikes:I

.field public respToName:Ljava/lang/String;

.field public resp_to:I

.field public text:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;

.field public userRName:Ljava/lang/String;

.field public userWName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

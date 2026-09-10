.class public Lcom/vkontakte/android/api/FriendRequest;
.super Ljava/lang/Object;
.source "FriendRequest.java"


# static fields
.field public static final STATE_ACCEPTED:I = 0x2

.field public static final STATE_DECLINED:I = 0x3

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NEW:I


# instance fields
.field public info:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public mutualFriends:[Lcom/vkontakte/android/UserProfile;

.field public numMutualFriends:I

.field public profile:Lcom/vkontakte/android/UserProfile;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    return-void
.end method

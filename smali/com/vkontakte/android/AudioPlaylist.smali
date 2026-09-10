.class public Lcom/vkontakte/android/AudioPlaylist;
.super Ljava/lang/Object;
.source "AudioPlaylist.java"


# instance fields
.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_title"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/vkontakte/android/AudioPlaylist;->id:I

    .line 14
    iput-object p2, p0, Lcom/vkontakte/android/AudioPlaylist;->title:Ljava/lang/String;

    .line 15
    return-void
.end method

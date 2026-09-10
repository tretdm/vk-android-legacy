.class public Lcom/vkontakte/android/api/GetMessagePhotos;
.super Lcom/vkontakte/android/APIRequest;
.source "GetMessagePhotos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetMessagePhotos$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetMessagePhotos$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "mid"    # I

    .prologue
    .line 17
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "code"

    const-string v1, "var m=API.messages.getById({mid:%d,photo_sizes:1})[1]; return {a:m.attachments,g:m.geo};"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetMessagePhotos;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    new-instance v0, Lcom/vkontakte/android/api/GetMessagePhotos$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GetMessagePhotos$1;-><init>(Lcom/vkontakte/android/api/GetMessagePhotos;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GetMessagePhotos;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    :try_start_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v6, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 36
    .local v3, "docs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v2, "docNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 70
    .local v8, "videos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "a"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 72
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 73
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_3

    .line 77
    .end local v5    # "i":I
    :cond_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "g"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 78
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "g"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "coordinates"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "point":[Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v4}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 80
    .local v4, "ga":Lcom/vkontakte/android/GeoAttachment;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 81
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v4, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "ga":Lcom/vkontakte/android/GeoAttachment;
    .end local v7    # "point":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/api/GetMessagePhotos;->callback:Lcom/vkontakte/android/api/GetMessagePhotos$Callback;

    if-eqz v9, :cond_2

    .line 86
    iget-object v9, p0, Lcom/vkontakte/android/api/GetMessagePhotos;->callback:Lcom/vkontakte/android/api/GetMessagePhotos$Callback;

    invoke-interface {v9, v1}, Lcom/vkontakte/android/api/GetMessagePhotos$Callback;->success(Ljava/util/ArrayList;)V

    .line 89
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v2    # "docNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "videos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 74
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v2    # "docNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v3    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    .restart local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "videos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v2    # "docNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v3    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "videos":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetMessagePhotos$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetMessagePhotos$Callback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkontakte/android/api/GetMessagePhotos;->callback:Lcom/vkontakte/android/api/GetMessagePhotos$Callback;

    .line 93
    return-object p0
.end method
